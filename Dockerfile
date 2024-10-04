FROM julia:latest AS build

WORKDIR /build
COPY Project.toml Manifest.toml compile.jl .
COPY ./src ./src/

# add C++ tools for PackageCompiler to use
RUN apt-get update && apt-get install -y g++ \
    && julia compile.jl

FROM julia:latest
COPY --from=build /build/app/* /app/

CMD ["/bin/sh"]