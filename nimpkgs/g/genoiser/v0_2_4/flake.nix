{
  description = ''functions to tracks for genomics data files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-genoiser-v0_2_4.flake = false;
  inputs.src-genoiser-v0_2_4.owner = "brentp";
  inputs.src-genoiser-v0_2_4.ref   = "refs/tags/v0.2.4";
  inputs.src-genoiser-v0_2_4.repo  = "genoiser";
  inputs.src-genoiser-v0_2_4.type  = "github";
  
  inputs."hts".dir   = "nimpkgs/h/hts";
  inputs."hts".owner = "riinr";
  inputs."hts".ref   = "flake-pinning";
  inputs."hts".repo  = "flake-nimble";
  inputs."hts".type  = "github";
  inputs."hts".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hts".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."docopt".dir   = "nimpkgs/d/docopt";
  inputs."docopt".owner = "riinr";
  inputs."docopt".ref   = "flake-pinning";
  inputs."docopt".repo  = "flake-nimble";
  inputs."docopt".type  = "github";
  inputs."docopt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."docopt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."kexpr".dir   = "nimpkgs/k/kexpr";
  inputs."kexpr".owner = "riinr";
  inputs."kexpr".ref   = "flake-pinning";
  inputs."kexpr".repo  = "flake-nimble";
  inputs."kexpr".type  = "github";
  inputs."kexpr".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kexpr".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-genoiser-v0_2_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-genoiser-v0_2_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}