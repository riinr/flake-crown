{
  description = ''Useful Variant Type and Powerful Pattern Matching for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-matsuri-v0_2_0.flake = false;
  inputs.src-matsuri-v0_2_0.ref   = "refs/tags/v0.2.0";
  inputs.src-matsuri-v0_2_0.owner = "zer0-star";
  inputs.src-matsuri-v0_2_0.repo  = "matsuri";
  inputs.src-matsuri-v0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-matsuri-v0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-matsuri-v0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}