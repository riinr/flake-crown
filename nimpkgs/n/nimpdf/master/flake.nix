{
  description = ''library for generating PDF files'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimPDF-master.flake = false;
  inputs.src-nimPDF-master.owner = "jangko";
  inputs.src-nimPDF-master.ref   = "refs/heads/master";
  inputs.src-nimPDF-master.repo  = "nimpdf";
  inputs.src-nimPDF-master.type  = "github";
  
  inputs."nimbmp".dir   = "nimpkgs/n/nimbmp";
  inputs."nimbmp".owner = "riinr";
  inputs."nimbmp".ref   = "flake-pinning";
  inputs."nimbmp".repo  = "flake-nimble";
  inputs."nimbmp".type  = "github";
  inputs."nimbmp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimbmp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimpng".dir   = "nimpkgs/n/nimpng";
  inputs."nimpng".owner = "riinr";
  inputs."nimpng".ref   = "flake-pinning";
  inputs."nimpng".repo  = "flake-nimble";
  inputs."nimpng".type  = "github";
  inputs."nimpng".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimpng".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimsha2".dir   = "nimpkgs/n/nimsha2";
  inputs."nimsha2".owner = "riinr";
  inputs."nimsha2".ref   = "flake-pinning";
  inputs."nimsha2".repo  = "flake-nimble";
  inputs."nimsha2".type  = "github";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimaes".dir   = "nimpkgs/n/nimaes";
  inputs."nimaes".owner = "riinr";
  inputs."nimaes".ref   = "flake-pinning";
  inputs."nimaes".repo  = "flake-nimble";
  inputs."nimaes".type  = "github";
  inputs."nimaes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimaes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."stb_image".dir   = "nimpkgs/s/stb_image";
  inputs."stb_image".owner = "riinr";
  inputs."stb_image".ref   = "flake-pinning";
  inputs."stb_image".repo  = "flake-nimble";
  inputs."stb_image".type  = "github";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimPDF-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimPDF-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}