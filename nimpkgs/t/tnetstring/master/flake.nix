{
  description = ''Parsing and serializing for the TNetstring format.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-tnetstring-master.flake = false;
  inputs.src-tnetstring-master.ref   = "refs/heads/master";
  inputs.src-tnetstring-master.owner = "mahlonsmith";
  inputs.src-tnetstring-master.repo  = "nim-tnetstring";
  inputs.src-tnetstring-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-tnetstring-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-tnetstring-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}