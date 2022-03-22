{
  description = ''Cryptographic signing for Nim.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-gungnir-master.flake = false;
  inputs.src-gungnir-master.owner = "planety";
  inputs.src-gungnir-master.ref   = "master";
  inputs.src-gungnir-master.repo  = "gungnir";
  inputs.src-gungnir-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-gungnir-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-gungnir-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}