{
  description = ''Define bindings to JavaScript and Emscripten'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-jsbind-master.flake = false;
  inputs.src-jsbind-master.owner = "yglukhov";
  inputs.src-jsbind-master.ref   = "refs/heads/master";
  inputs.src-jsbind-master.repo  = "jsbind";
  inputs.src-jsbind-master.type  = "github";
  
  inputs."https://github.com/yglukhov/wasmrt".owner = "nim-nix-pkgs";
  inputs."https://github.com/yglukhov/wasmrt".ref   = "master";
  inputs."https://github.com/yglukhov/wasmrt".repo  = "https://github.com/yglukhov/wasmrt";
  inputs."https://github.com/yglukhov/wasmrt".type  = "github";
  inputs."https://github.com/yglukhov/wasmrt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."https://github.com/yglukhov/wasmrt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-jsbind-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-jsbind-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}