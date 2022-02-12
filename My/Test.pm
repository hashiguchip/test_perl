package My::Test; # これ以降はパッケージ名 pkg1空間
use strict;
# 継承
## qwは文字列リスト演算子です。この場合は不要かも
use parent qw(My::TestBase);
## モジュールとパッケージは違うのんか。。
# https://rfs.jp/sb/perl/04/01-5.html#i
# パッケージ名前空間の有効範囲は、package 文を宣言した場所から別のpackage文が現れるまでまでの範囲になります
my $value = "It's getting exciting now !";
sub test {
    return 'kkkk';
    # print('jjjjjj');
}
# アロー関数だとコンテクスト($self === $class? が渡る)
sub classMethod {
    my $self = shift;
    print($self);
}
sub classMethod2 {
    my $self = shift;
    print('classMethod2....');
}
# newして呼び出す
sub new {
    # パラメータの複数受け取り一括で
    # my ( $a, $b ) = @_;
    my $class = shift;
    my $list = shift;
    # だからこうとも書ける
    # my($class, $arg) = @_;
    # selfとは？
    # 多分意味的にobjのthisとかと同じイメーっじ。コンストラクタメソッドじゃなくてね。インスタンスのコンテキスト。
    # モジュールのサブルーチンを持ったobjを生成します。それによってインスタンスを作る、っってことをやってるわけですね。。
    my $self = bless {list => $list}, $class;
    return $self;
}
# package pkg2; # パッケージ名 pkg2 の宣言
# print $value, "\n"; # pkg2 では $value が宣言されていないのでエラー
# $pkg1::value; # 成功です。pkg1 の変数を呼び出しています
# # > It's getting exciting now !
# print "現在のパッケージ名は" . __PACKAGE__ . "です\n";
# @INCとは？
1;