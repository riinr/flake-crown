{
  description = ''Discord library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-discordnim-master.flake = false;
  inputs.src-discordnim-master.owner = "Krognol";
  inputs.src-discordnim-master.ref   = "master";
  inputs.src-discordnim-master.repo  = "discordnim";
  inputs.src-discordnim-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-discordnim-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-discordnim-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}