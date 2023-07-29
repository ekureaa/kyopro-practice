# kyopro-practice

競技プログラミング精進用リポジトリ

## 使い方

### AtCoder Beginner Contest 用ディレクトリの作成
```bash
bash make_abc_dir.sh <コンテストの番号>
```

### コードテスト

以下を`.bashrc` に追加

```bash
function acrun () {
    echo -e "[\e[34mx\e[0m] Run \e[36m$1\e[m Problem"
    echo -e "[\e[34mx\e[0m] g++ -std=gnu++17 -Wall -Wextra -O2 -DONLINE_JUDGE -I/opt/boost/gcc/include -L/opt/boost/gcc/lib -I/opt/ac-library -o $1/a.out $1/Main.cpp"
    g++ -std=gnu++17 -Wall -Wextra -O2 -DONLINE_JUDGE -I/opt/boost/gcc/include -L/opt/boost/gcc/lib -I/opt/ac-library -o $1/a.out $1/Main.cpp

    result=$?
    if [ $result -ne 0 ]
    then
        echo -e "[\e[31m-\e[0m] compile failed"
    else
        echo -e "[\e[32m+\e[0m] successful complie"
        echo -e "[\e[34mx\e[0m] run ./a.out"
        ./a.out < $1/input.txt
    fi
}
```
コンテストのディレクトリに移動して
```
acrun <問題番号>
```
で実行．
