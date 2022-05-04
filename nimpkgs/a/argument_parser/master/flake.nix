{
  description = ''Provides a complex commandline parser.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-argument_parser-master.flake = false;
  inputs.src-argument_parser-master.ref   = "refs/heads/master";
  inputs.src-argument_parser-master.owner = "Xe";
  inputs.src-argument_parser-master.repo  = "argument_parser";
  inputs.src-argument_parser-master.type  = "github";
  
  inputs."github.com/xe/badger_bits".owner = "nim-nix-pkgs";
  inputs."github.com/xe/badger_bits".ref   = "master";
  inputs."github.com/xe/badger_bits".repo  = "github.com/xe/badger_bits";
  inputs."github.com/xe/badger_bits".dir   = "";
  inputs."github.com/xe/badger_bits".type  = "github";
  inputs."github.com/xe/badger_bits".inputs.nixpkgs.follows = "nixpkgs";
  inputs."github.com/xe/badger_bits".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nake".owner = "nim-nix-pkgs";
  inputs."nake".ref   = "master";
  inputs."nake".repo  = "nake";
  inputs."nake".dir   = "1_9_4";
  inputs."nake".type  = "github";
  inputs."nake".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nake".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-argument_parser-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-argument_parser-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}