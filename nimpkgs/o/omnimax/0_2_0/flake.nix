{
  description = ''Max wrapper for omni.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-omnimax-0_2_0.flake = false;
  inputs.src-omnimax-0_2_0.owner = "vitreo12";
  inputs.src-omnimax-0_2_0.ref   = "refs/tags/0.2.0";
  inputs.src-omnimax-0_2_0.repo  = "omnimax";
  inputs.src-omnimax-0_2_0.type  = "github";
  
  inputs."cligen".dir   = "nimpkgs/c/cligen";
  inputs."cligen".owner = "riinr";
  inputs."cligen".ref   = "flake-pinning";
  inputs."cligen".repo  = "flake-nimble";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."omni".dir   = "nimpkgs/o/omni";
  inputs."omni".owner = "riinr";
  inputs."omni".ref   = "flake-pinning";
  inputs."omni".repo  = "flake-nimble";
  inputs."omni".type  = "github";
  inputs."omni".inputs.nixpkgs.follows = "nixpkgs";
  inputs."omni".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-omnimax-0_2_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-omnimax-0_2_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}