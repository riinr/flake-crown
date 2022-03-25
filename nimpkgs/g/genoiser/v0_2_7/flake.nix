{
  description = ''write functions, get summaries of genomic data'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-genoiser-v0_2_7.flake = false;
  inputs.src-genoiser-v0_2_7.ref   = "refs/tags/v0.2.7";
  inputs.src-genoiser-v0_2_7.owner = "brentp";
  inputs.src-genoiser-v0_2_7.repo  = "genoiser";
  inputs.src-genoiser-v0_2_7.type  = "github";
  
  inputs."hts".owner = "nim-nix-pkgs";
  inputs."hts".ref   = "master";
  inputs."hts".repo  = "hts";
  inputs."hts".dir   = "v0_3_21";
  inputs."hts".type  = "github";
  inputs."hts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".owner = "nim-nix-pkgs";
  inputs."docopt".ref   = "master";
  inputs."docopt".repo  = "docopt";
  inputs."docopt".dir   = "v0_6_8";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kexpr".owner = "nim-nix-pkgs";
  inputs."kexpr".ref   = "master";
  inputs."kexpr".repo  = "kexpr";
  inputs."kexpr".dir   = "v0_0_2";
  inputs."kexpr".type  = "github";
  inputs."kexpr".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kexpr".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-genoiser-v0_2_7"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-genoiser-v0_2_7";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}