#  在temp下新建txt文件
#   该脚本会把txt文件用模板包裹起来放到对应的view文件夹下
echo 'Start!'
echo '输入文章类型: 例如 blog'
read type
echo '输入文章名称:  **.txt'
read title

cd ..
cd temp

cat atemplate1.html >> '../view/'$type'/'$title'.html'
cat $title'.txt' >> '../view/'$type'/'$title'.html'
cat atemplate2.html >> '../view/'$type'/'$title'.html'


cd '../view/'$type'/'

if [[ 'blog'==$type ]]; then
    sed -i 's/tititi/博客/g' $title'.html'
    sed -i 's/typetype/blog/g' $title'.html'
fi

if [[ 'idea'==$type ]]; then
    sed -i 's/tititi/想法/g' $title'.html'
    sed -i 's/typetype/idea/g' $title'.html'
fi

if [[ 'zheteng'==$type ]]; then
    sed -i 's/tititi/折腾/g' $title'.html'
    sed -i 's/typetype/zheteng/g' $title'.html'
fi

echo 'End!'