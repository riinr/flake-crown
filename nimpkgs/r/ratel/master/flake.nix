{
  description = ''Nim for microcontrollers'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-ratel-master.flake = false;
  inputs.src-ratel-master.ref   = "refs/heads/master";
  inputs.src-ratel-master.owner = "PMunch";
  inputs.src-ratel-master.repo  = "ratel";
  inputs.src-ratel-master.type  = "github";
  
  inputs."nimscripter".owner = "nim-nix-pkgs";
  inputs."nimscripter".ref   = "master";
  inputs."nimscripter".repo  = "nimscripter";
  inputs."nimscripter".dir   = "master";
  inputs."nimscripter".type  = "github";
  inputs."nimscripter".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimscripter".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_23";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-ratel-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-ratel-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}