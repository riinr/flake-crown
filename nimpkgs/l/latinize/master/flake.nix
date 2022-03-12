{
  description = ''Convert accents (diacritics) from strings to latin characters.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-latinize-master.flake = false;
  inputs.src-latinize-master.owner = "AmanoTeam";
  inputs.src-latinize-master.ref   = "refs/heads/master";
  inputs.src-latinize-master.repo  = "Latinize";
  inputs.src-latinize-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-latinize-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-latinize-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}