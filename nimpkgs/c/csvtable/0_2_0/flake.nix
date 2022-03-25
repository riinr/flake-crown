{
  description = ''Nim tools for handling CSV files with an API similar to Python's CSVDictReader and -Writer'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-csvtable-0_2_0.flake = false;
  inputs.src-csvtable-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-csvtable-0_2_0.owner = "apahl";
  inputs.src-csvtable-0_2_0.repo  = "csvtable";
  inputs.src-csvtable-0_2_0.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-csvtable-0_2_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-csvtable-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}