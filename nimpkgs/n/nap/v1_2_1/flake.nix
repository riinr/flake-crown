{
  description = ''Argument parser'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nap-v1_2_1.flake = false;
  inputs.src-nap-v1_2_1.owner = "madprops";
  inputs.src-nap-v1_2_1.ref   = "v1_2_1";
  inputs.src-nap-v1_2_1.repo  = "nap";
  inputs.src-nap-v1_2_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nap-v1_2_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nap-v1_2_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}