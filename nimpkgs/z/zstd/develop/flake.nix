{
  description = ''Bindings for zstd'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zstd-develop.flake = false;
  inputs.src-zstd-develop.owner = "wltsmrz";
  inputs.src-zstd-develop.ref   = "refs/heads/develop";
  inputs.src-zstd-develop.repo  = "nim_zstd";
  inputs.src-zstd-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zstd-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zstd-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}