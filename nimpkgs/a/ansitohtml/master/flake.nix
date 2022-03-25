{
  description = ''A library that converts a string with ANSI CSI SGR codes (colours and such) into a string with HTML tags'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ansitohtml-master.flake = false;
  inputs.src-ansitohtml-master.ref   = "refs/heads/master";
  inputs.src-ansitohtml-master.owner = "PMunch";
  inputs.src-ansitohtml-master.repo  = "ansitohtml";
  inputs.src-ansitohtml-master.type  = "github";
  
  inputs."ansiparse".owner = "nim-nix-pkgs";
  inputs."ansiparse".ref   = "master";
  inputs."ansiparse".repo  = "ansiparse";
  inputs."ansiparse".dir   = "v0_2_0";
  inputs."ansiparse".type  = "github";
  inputs."ansiparse".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ansiparse".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ansitohtml-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ansitohtml-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}