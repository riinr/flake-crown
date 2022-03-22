{
  description = ''markdown dialect'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-marggers-v0_2_6.flake = false;
  inputs.src-marggers-v0_2_6.owner = "metagn";
  inputs.src-marggers-v0_2_6.ref   = "v0_2_6";
  inputs.src-marggers-v0_2_6.repo  = "marggers";
  inputs.src-marggers-v0_2_6.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-marggers-v0_2_6"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-marggers-v0_2_6";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}