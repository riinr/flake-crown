{
  description = ''Client and server database and networking utils'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-wavecore-0_3_0.flake = false;
  inputs.src-wavecore-0_3_0.owner = "ansiwave";
  inputs.src-wavecore-0_3_0.ref   = "refs/tags/0.3.0";
  inputs.src-wavecore-0_3_0.repo  = "wavecore";
  inputs.src-wavecore-0_3_0.type  = "github";
  
  inputs."urlly".dir   = "nimpkgs/u/urlly";
  inputs."urlly".owner = "riinr";
  inputs."urlly".ref   = "flake-pinning";
  inputs."urlly".repo  = "flake-nimble";
  inputs."urlly".type  = "github";
  inputs."urlly".inputs.nixpkgs.follows = "nixpkgs";
  inputs."urlly".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy".dir   = "nimpkgs/p/puppy";
  inputs."puppy".owner = "riinr";
  inputs."puppy".ref   = "flake-pinning";
  inputs."puppy".repo  = "flake-nimble";
  inputs."puppy".type  = "github";
  inputs."puppy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."flatty".dir   = "nimpkgs/f/flatty";
  inputs."flatty".owner = "riinr";
  inputs."flatty".ref   = "flake-pinning";
  inputs."flatty".repo  = "flake-nimble";
  inputs."flatty".type  = "github";
  inputs."flatty".inputs.nixpkgs.follows = "nixpkgs";
  inputs."flatty".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zippy".dir   = "nimpkgs/z/zippy";
  inputs."zippy".owner = "riinr";
  inputs."zippy".ref   = "flake-pinning";
  inputs."zippy".repo  = "flake-nimble";
  inputs."zippy".type  = "github";
  inputs."zippy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zippy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."paramidi".dir   = "nimpkgs/p/paramidi";
  inputs."paramidi".owner = "riinr";
  inputs."paramidi".ref   = "flake-pinning";
  inputs."paramidi".repo  = "flake-nimble";
  inputs."paramidi".type  = "github";
  inputs."paramidi".inputs.nixpkgs.follows = "nixpkgs";
  inputs."paramidi".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-wavecore-0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-wavecore-0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}