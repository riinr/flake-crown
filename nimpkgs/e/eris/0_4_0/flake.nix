{
  description = ''Encoding for Robust Immutable Storage (ERIS)'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-eris-0_4_0.flake = false;
  inputs.src-eris-0_4_0.owner = "~ehmry";
  inputs.src-eris-0_4_0.ref   = "refs/tags/0.4.0";
  inputs.src-eris-0_4_0.repo  = "eris";
  inputs.src-eris-0_4_0.type  = "other";
  
  inputs."base32".dir   = "nimpkgs/b/base32";
  inputs."base32".owner = "riinr";
  inputs."base32".ref   = "flake-pinning";
  inputs."base32".repo  = "flake-nimble";
  inputs."base32".type  = "github";
  inputs."base32".inputs.nixpkgs.follows = "nixpkgs";
  inputs."base32".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."taps".dir   = "nimpkgs/t/taps";
  inputs."taps".owner = "riinr";
  inputs."taps".ref   = "flake-pinning";
  inputs."taps".repo  = "flake-nimble";
  inputs."taps".type  = "github";
  inputs."taps".inputs.nixpkgs.follows = "nixpkgs";
  inputs."taps".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tkrzw".dir   = "nimpkgs/t/tkrzw";
  inputs."tkrzw".owner = "riinr";
  inputs."tkrzw".ref   = "flake-pinning";
  inputs."tkrzw".repo  = "flake-nimble";
  inputs."tkrzw".type  = "github";
  inputs."tkrzw".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tkrzw".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-eris-0_4_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-eris-0_4_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}