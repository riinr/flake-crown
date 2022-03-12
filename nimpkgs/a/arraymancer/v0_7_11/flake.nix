{
  description = ''A tensor (multidimensional array) library for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-arraymancer-v0_7_11.flake = false;
  inputs.src-arraymancer-v0_7_11.owner = "mratsim";
  inputs.src-arraymancer-v0_7_11.ref   = "refs/tags/v0.7.11";
  inputs.src-arraymancer-v0_7_11.repo  = "Arraymancer";
  inputs.src-arraymancer-v0_7_11.type  = "github";
  
  inputs."nimblas".dir   = "nimpkgs/n/nimblas";
  inputs."nimblas".owner = "riinr";
  inputs."nimblas".ref   = "flake-pinning";
  inputs."nimblas".repo  = "flake-nimble";
  inputs."nimblas".type  = "github";
  inputs."nimblas".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimblas".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimlapack".dir   = "nimpkgs/n/nimlapack";
  inputs."nimlapack".owner = "riinr";
  inputs."nimlapack".ref   = "flake-pinning";
  inputs."nimlapack".repo  = "flake-nimble";
  inputs."nimlapack".type  = "github";
  inputs."nimlapack".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimlapack".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcuda".dir   = "nimpkgs/n/nimcuda";
  inputs."nimcuda".owner = "riinr";
  inputs."nimcuda".ref   = "flake-pinning";
  inputs."nimcuda".repo  = "flake-nimble";
  inputs."nimcuda".type  = "github";
  inputs."nimcuda".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcuda".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimcl".dir   = "nimpkgs/n/nimcl";
  inputs."nimcl".owner = "riinr";
  inputs."nimcl".ref   = "flake-pinning";
  inputs."nimcl".repo  = "flake-nimble";
  inputs."nimcl".type  = "github";
  inputs."nimcl".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimcl".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."clblast".dir   = "nimpkgs/c/clblast";
  inputs."clblast".owner = "riinr";
  inputs."clblast".ref   = "flake-pinning";
  inputs."clblast".repo  = "flake-nimble";
  inputs."clblast".type  = "github";
  inputs."clblast".inputs.nixpkgs.follows = "nixpkgs";
  inputs."clblast".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image".dir   = "nimpkgs/s/stb_image";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".ref   = "flake-pinning";
  inputs."stb_image".repo  = "flake-nimble";
  inputs."stb_image".type  = "github";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zip".dir   = "nimpkgs/z/zip";
  inputs."zip".owner = "riinr";
  inputs."zip".ref   = "flake-pinning";
  inputs."zip".repo  = "flake-nimble";
  inputs."zip".type  = "github";
  inputs."zip".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zip".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."untar".dir   = "nimpkgs/u/untar";
  inputs."untar".owner = "riinr";
  inputs."untar".ref   = "flake-pinning";
  inputs."untar".repo  = "flake-nimble";
  inputs."untar".type  = "github";
  inputs."untar".inputs.nixpkgs.follows = "nixpkgs";
  inputs."untar".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-arraymancer-v0_7_11"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-arraymancer-v0_7_11";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}