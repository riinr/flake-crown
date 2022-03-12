{
  description = ''Pub/Sub engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-suber-2_0_0.flake = false;
  inputs.src-suber-2_0_0.owner = "olliNiinivaara";
  inputs.src-suber-2_0_0.ref   = "refs/tags/2.0.0";
  inputs.src-suber-2_0_0.repo  = "Suber";
  inputs.src-suber-2_0_0.type  = "github";
  
  inputs."stashtable".dir   = "nimpkgs/s/stashtable";
  inputs."stashtable".owner = "riinr";
  inputs."stashtable".ref   = "flake-pinning";
  inputs."stashtable".repo  = "flake-nimble";
  inputs."stashtable".type  = "github";
  inputs."stashtable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-suber-2_0_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-suber-2_0_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}