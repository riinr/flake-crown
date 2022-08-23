{
  description = ''A wrapper for libdeflate'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-libdeflate_gzip-v0_1_0.flake = false;
  inputs.src-libdeflate_gzip-v0_1_0.ref   = "refs/tags/v0.1.0";
  inputs.src-libdeflate_gzip-v0_1_0.owner = "radekm";
  inputs.src-libdeflate_gzip-v0_1_0.repo  = "nim_libdeflate_gzip";
  inputs.src-libdeflate_gzip-v0_1_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-libdeflate_gzip-v0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-libdeflate_gzip-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}