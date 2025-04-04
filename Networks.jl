julia> write(stdout, "Hello World");
Hello World
julia> read(stdin, Char)

'\r': ASCII/Unicode U+000D (category Cc: Other, control)

julia> x = zeros(UInt8, 4)
4-element Vector{UInt8}:
 0x00
 0x00
 0x00
 0x00


julia> read!(stdin,x)
abcd
4-element Vector{UInt8}:
 0x61
 0x62
 0x63
 0x64

julia> read(stdin,4)
abcd
4-element Vector{UInt8}:
 0x61
 0x62
 0x63
 0x64

julia> write("hello.txt", "Hello, World!")
13

julia> read("hello.txt", String)
"Hello, World!"

julia> f = open("hello.txt")
IOStream(<file hello.txt>)

julia> readlines(f)
1-element Vector{String}:
 "Hello, World!"

julia> f = open("hello.txt","w")
IOStream(<file hello.txt>)

julia> write(f,"Hello again.")
12

julia> close(f)


julia> function read_and_capitalize(f::IOStream)
           return uppercase(read(f, String))
           end
read_and_capitalize (generic function with 1 method)

julia> open(read_and_capitalize, "hello.txt")
"HELLO AGAIN."

julia> open("hello.txt") do f
       uppercase(read(f, String))
       end
"HELLO AGAIN."

julia> out_file = open("output.txt", "w")
IOStream(<file output.txt>)

julia> out_file = open("output.txt", "w")
IOStream(<file output.txt>)

julia> using Sockets

julia> errormonitor(@async begin
       server = listen(2000)
       while true
       soc = accept(server)
       println("Hello World\n")
       end
       end)
Task (runnable, started) @0x0000021d8dd71750


julia> clientside = connect(2001)
TCPSocket(Base.Libc.WindowsRawSocket(0x0000000000000478) open, 0 bytes waiting)
julia> errormonitor(@async errormonitor(@async begin
julia> errormonitor(@async errormonitor(@async begin
                  server = listen(2001)
julia> errormonitor(@async errormonitor(@async begin
                  server = listen(2001)
                             while true
