{
  description = ''Conversion between integers and Roman numerals'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-romans-master.flake = false;
  inputs.src-romans-master.owner = "lcrees";
  inputs.src-romans-master.ref   = "master";
  inputs.src-romans-master.repo  = "romans";
  inputs.src-romans-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-romans-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-romans-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}