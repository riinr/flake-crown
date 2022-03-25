{
  description = ''HMAC hashing in Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-hmac-0_1_1.flake = false;
  inputs.src-hmac-0_1_1.ref   = "refs/tags/0.1.1";
  inputs.src-hmac-0_1_1.owner = "OpenSystemsLab";
  inputs.src-hmac-0_1_1.repo  = "hmac.nim";
  inputs.src-hmac-0_1_1.type  = "github";
  
  inputs."nimsha2".owner = "nim-nix-pkgs";
  inputs."nimsha2".ref   = "master";
  inputs."nimsha2".repo  = "nimsha2";
  inputs."nimsha2".dir   = "master";
  inputs."nimsha2".type  = "github";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-hmac-0_1_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-hmac-0_1_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}