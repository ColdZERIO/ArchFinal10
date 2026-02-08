mkdir -p task/dir1 task/dir2 task/dir3/dir4
cd task
touch dir2/empty
touch dir2/hello.sh
cd dir2
cat << 'EOF' > hello.sh
#!/bin/bash
echo "$1, привет!"
EOF
chmod 764 hello.sh
ls -l
cd ..
touch dir2/list.txt
ls -1 dir2 > dir2/list.txt
cp -r dir2/. dir3/dir4/
find . -type f -name "*.txt" > dir1/summary.txt
cat dir2/list.txt >> dir1/summary.txt
export NAME="Всем студентам"
dir2/hello.sh "$NAME" >> dir1/summary.txt
mv dir1/summary.txt "Практическое задание"
cat "Практическое задание"
grep "dir" "Практическое задание" | sort
cd .. || exit 1
rm -r task