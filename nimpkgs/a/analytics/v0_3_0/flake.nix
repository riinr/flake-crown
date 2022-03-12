{
  description = ''Allows statistics to be sent to and recorded in Google Analytics.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-analytics-v0_3_0.flake = false;
  inputs.src-analytics-v0_3_0.owner = "dom96";
  inputs.src-analytics-v0_3_0.ref   = "refs/tags/v0.3.0";
  inputs.src-analytics-v0_3_0.repo  = "analytics";
  inputs.src-analytics-v0_3_0.type  = "github";
  
  inputs."uuids".dir   = "nimpkgs/u/uuids";
  inputs."uuids".owner = "riinr";
  inputs."uuids".ref   = "flake-pinning";
  inputs."uuids".repo  = "flake-nimble";
  inputs."uuids".type  = "github";
  inputs."uuids".inputs.nixpkgs.follows = "nixpkgs";
  inputs."uuids".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."osinfo".dir   = "nimpkgs/o/osinfo";
  inputs."osinfo".owner = "riinr";
  inputs."osinfo".ref   = "flake-pinning";
  inputs."osinfo".repo  = "flake-nimble";
  inputs."osinfo".type  = "github";
  inputs."osinfo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."osinfo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."puppy".dir   = "nimpkgs/p/puppy";
  inputs."puppy".owner = "riinr";
  inputs."puppy".ref   = "flake-pinning";
  inputs."puppy".repo  = "flake-nimble";
  inputs."puppy".type  = "github";
  inputs."puppy".inputs.nixpkgs.follows = "nixpkgs";
  inputs."puppy".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-analytics-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-analytics-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}