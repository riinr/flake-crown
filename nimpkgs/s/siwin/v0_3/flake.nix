{
  description = ''Simple window maker.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-siwin-v0_3.flake = false;
  inputs.src-siwin-v0_3.owner = "levovix0";
  inputs.src-siwin-v0_3.ref   = "refs/tags/v0.3";
  inputs.src-siwin-v0_3.repo  = "siwin";
  inputs.src-siwin-v0_3.type  = "github";
  
  inputs."with".dir   = "nimpkgs/w/with";
  inputs."with".owner = "riinr";
  inputs."with".ref   = "flake-pinning";
  inputs."with".repo  = "flake-nimble";
  inputs."with".type  = "github";
  inputs."with".inputs.nixpkgs.follows = "nixpkgs";
  inputs."with".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-siwin-v0_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-siwin-v0_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}