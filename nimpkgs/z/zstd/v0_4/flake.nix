{
  description = ''Bindings for zstd'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zstd-v0_4.flake = false;
  inputs.src-zstd-v0_4.owner = "wltsmrz";
  inputs.src-zstd-v0_4.ref   = "refs/tags/v0.4";
  inputs.src-zstd-v0_4.repo  = "nim_zstd";
  inputs.src-zstd-v0_4.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zstd-v0_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zstd-v0_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}