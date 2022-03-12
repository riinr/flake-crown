{
  description = ''Bindings for zstd'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zstd-v0_3.flake = false;
  inputs.src-zstd-v0_3.owner = "wltsmrz";
  inputs.src-zstd-v0_3.ref   = "refs/tags/v0.3";
  inputs.src-zstd-v0_3.repo  = "nim_zstd";
  inputs.src-zstd-v0_3.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zstd-v0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zstd-v0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}