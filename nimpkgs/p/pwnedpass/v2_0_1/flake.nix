{
  description = ''A client and api for the Pwned passwords API.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-pwnedpass-v2_0_1.flake = false;
  inputs.src-pwnedpass-v2_0_1.ref   = "refs/tags/v2.0.1";
  inputs.src-pwnedpass-v2_0_1.owner = "foxoman";
  inputs.src-pwnedpass-v2_0_1.repo  = "pwnedpass";
  inputs.src-pwnedpass-v2_0_1.type  = "github";
  
  inputs."puppy".owner = "nim-nix-pkgs";
  inputs."puppy".ref   = "master";
  inputs."puppy".repo  = "puppy";
  inputs."puppy".dir   = "1_6_0";
  inputs."puppy".type  = "github";
  inputs."puppy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."termui".owner = "nim-nix-pkgs";
  inputs."termui".ref   = "master";
  inputs."termui".repo  = "termui";
  inputs."termui".dir   = "master";
  inputs."termui".type  = "github";
  inputs."termui".inputs.nixpkgs.follows = "nixpkgs";
  inputs."termui".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-pwnedpass-v2_0_1"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-pwnedpass-v2_0_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}