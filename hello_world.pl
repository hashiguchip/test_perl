#! /usr/bin/perl
# これがよくわからない。。
BEGIN { push @INC, './' }
use strict;
use Data::Dumper;
# use Test;
# use lib 'My';
use My::Test;
print "Hello World!\n";
# print Test;
My::Test->test();
print(My::Test::test());
print(My::Test->new()->classMethod2());
print(My::Test->new()->testFromBase());
# https://shin.hateblo.jp/entry/2013/09/24/020506


# ポイントは、サブルーチンの呼び出し方です。モジュール内のただのサブルーチンsubroutine_sumにはダブルコロン演算子でアクセスしていますが、それ以外ではアロー演算子が使われています。
#
# Perlではアロー演算子でサブルーチンを呼ぶと、そのサブルーチンの第一引数にレシーバ*5 がセットされる仕組みとなっています。そのため、メソッド側を見てみると、
#
# # variable
# $var1 = 'Hello aaaaa'; # always wanted to do that :-)
# $var2 = "$varl\n";
#
# print $var1;
#
# # array = list
# my @city = ("東京", "大阪", "名古屋");
#
# print @city;
#
# # (1)引数に渡す値
# my $num1 = 1;
# my $num2 = 2;
#
# # (2)サブルーチンの呼び出し
# my $total = total($num1, $num2);
# print $total;
#
# ## sub routine
# sub total {
#   # (1)引数の受け取り
#   my ($num1, $num2) = @_;
#
#   # (2)処理
#   my $total = $num1 + $num2;
#
#   # (3)戻り値
#   return $total;
# }
#
# # スカラーとか
# # perlの変数には種類がある。
# # スカラー
# $aaa = 1;
# # 配列 list?
# my @city = ("東京", "大阪", "名古屋");
# # ハッシュ
# # 連想配列です
# %dna2aa = ("ATC" => "I", "CCA" => "P", "GTA" => "V");
# print($dna2aa{"CCA"});
#
# # リファレンス
# ## 参照ですね。
# my @arr = ('A', 'C', 'G', 'T');
# my $ref_arr = [];
# $ref_arr = \@arr;#\@fooで参照をわたす
# # print($ref_arr);
#
# # = []は無名配列生成子というらしい
# # これで直接参照をget...!
# my $ref_arr = ['A', 'C', 'G', 'T'];
# print  "\n";
# print Dumper $ref_arr;
#
# # classとかどうなるんだろ？
# # use モジュール名
# # classの代わり的な。再利用の単位はモジュール。
# ## 参考記事
# # https://xtech.nikkei.com/it/article/COLUMN/20080528/304551/#:~:text=Perl%E3%81%A7%E3%81%AF%E3%80%8C%E3%83%A2%E3%82%B8%E3%83%A5%E3%83%BC%E3%83%AB%E3%80%8D%E3%81%8C%EF%BC%8C,%E3%81%AE%E3%82%88%E3%81%86%E3%81%AA%E3%82%82%E3%81%AE%E3%81%A7%E3%81%99%E3%80%82
# # https://qiita.com/tadnakam/items/485fe6fd1cf79f3cb97c
#
# # モジュールとパッケージ違い

exit;