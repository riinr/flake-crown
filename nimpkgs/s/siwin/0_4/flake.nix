{
  description = ''Simple window maker.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-siwin-0_4.flake = false;
  inputs.src-siwin-0_4.owner = "levovix0";
  inputs.src-siwin-0_4.ref   = "refs/tags/0.4";
  inputs.src-siwin-0_4.repo  = "siwin";
  inputs.src-siwin-0_4.type  = "github";
  
  inputs."chroma".dir   = "nimpkgs/c/chroma";
  inputs."chroma".owner = "riinr";
  inputs."chroma".ref   = "flake-pinning";
  inputs."chroma".repo  = "flake-nimble";
  inputs."chroma".type  = "github";
  inputs."chroma".inputs.nixpkgs.follows = "nixpkgs";
  inputs."chroma".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."x11".dir   = "nimpkgs/x/x11";
  inputs."x11".owner = "riinr";
  inputs."x11".ref   = "flake-pinning";
  inputs."x11".repo  = "flake-nimble";
  inputs."x11".type  = "github";
  inputs."x11".inputs.nixpkgs.follows = "nixpkgs";
  inputs."x11".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-siwin-0_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-siwin-0_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}