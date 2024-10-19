FROM docker.io/gnuoctave/octave:9.2.0

WORKDIR /app
COPY . /app

RUN octave --eval 'pkg install "https://downloads.sourceforge.net/project/octave/Octave%20Forge%20Packages/Individual%20Package%20Releases/symbolic-3.2.1.tar.gz"'
CMD "octave main.m >> /dev/null"
CMD "cat answer_associativity.txt"
