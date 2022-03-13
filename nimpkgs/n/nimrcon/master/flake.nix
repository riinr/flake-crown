{
  description = ''Simple RCON client in Nim lang.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimrcon-master.flake = false;
  inputs.src-nimrcon-master.owner = "mcilya";
  inputs.src-nimrcon-master.ref   = "refs/heads/master";
  inputs.src-nimrcon-master.repo  = "nimrcon";
  inputs.src-nimrcon-master.type  = "github";
  
  inputs."struct".owner = "nim-nix-pkgs";
  inputs."struct".ref   = "master";
  inputs."struct".repo  = "struct";
  inputs."struct".type  = "github";
  inputs."struct".inputs.nixpkgs.follows = "nixpkgs";
  inputs."struct".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimrcon-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimrcon-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}