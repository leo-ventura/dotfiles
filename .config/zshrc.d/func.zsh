comp3() {
	prog_name=$1.cpp
	prog_executable=$1
	g++ -std=c++17 $prog_name -o $prog_executable && ./$prog_executable
}
