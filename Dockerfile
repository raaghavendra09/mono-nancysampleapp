FROM frolvlad/alpine-mono
ADD . /src
WORKDIR /src
ADD https://dist.nuget.org/win-x86-commandline/latest/nuget.exe /src/nuget.exe
RUN mono nuget.exe restore
RUN xbuild /p:Configuration=Release
CMD [ "mono", "/src/Mono-MyFirstNancy/bin/Debug/Mono-MyFirstNancy.exe" ]
