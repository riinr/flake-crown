{
  description = ''Master Password command line utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mpwc-master.flake = false;
  inputs.src-mpwc-master.ref   = "refs/heads/master";
  inputs.src-mpwc-master.owner = "SolitudeSF";
  inputs.src-mpwc-master.repo  = "mpwc";
  inputs.src-mpwc-master.type  = "github";
  
  inputs."masterpassword".owner = "nim-nix-pkgs";
  inputs."masterpassword".ref   = "master";
  inputs."masterpassword".repo  = "masterpassword";
  inputs."masterpassword".dir   = "v0_2_1";
  inputs."masterpassword".type  = "github";
  inputs."masterpassword".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_25";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mpwc-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-mpwc-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}