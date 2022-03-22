{
  description = ''Discord library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-discordnim-develop.flake = false;
  inputs.src-discordnim-develop.owner = "Krognol";
  inputs.src-discordnim-develop.ref   = "develop";
  inputs.src-discordnim-develop.repo  = "discordnim";
  inputs.src-discordnim-develop.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-discordnim-develop"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-discordnim-develop";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}