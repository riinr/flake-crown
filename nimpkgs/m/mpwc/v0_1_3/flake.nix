{
  description = ''Master Password command line utility'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mpwc-v0_1_3.flake = false;
  inputs.src-mpwc-v0_1_3.owner = "SolitudeSF";
  inputs.src-mpwc-v0_1_3.ref   = "refs/tags/v0.1.3";
  inputs.src-mpwc-v0_1_3.repo  = "mpwc";
  inputs.src-mpwc-v0_1_3.type  = "github";
  
  inputs."masterpassword".owner = "nim-nix-pkgs";
  inputs."masterpassword".ref   = "master";
  inputs."masterpassword".repo  = "masterpassword";
  inputs."masterpassword".type  = "github";
  inputs."masterpassword".inputs.nixpkgs.follows = "nixpkgs";
  inputs."masterpassword".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mpwc-v0_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mpwc-v0_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}