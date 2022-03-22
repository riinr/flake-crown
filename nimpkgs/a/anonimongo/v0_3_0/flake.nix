{
  description = ''Anonimongo - Another pure NIm Mongo driver'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-anonimongo-v0_3_0.flake = false;
  inputs.src-anonimongo-v0_3_0.owner = "mashingan";
  inputs.src-anonimongo-v0_3_0.ref   = "v0_3_0";
  inputs.src-anonimongo-v0_3_0.repo  = "anonimongo";
  inputs.src-anonimongo-v0_3_0.type  = "github";
  
  inputs."nimsha2".owner = "nim-nix-pkgs";
  inputs."nimsha2".ref   = "master";
  inputs."nimsha2".repo  = "nimsha2";
  inputs."nimsha2".dir   = "";
  inputs."nimsha2".type  = "github";
  inputs."nimsha2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."scram".owner = "nim-nix-pkgs";
  inputs."scram".ref   = "master";
  inputs."scram".repo  = "scram";
  inputs."scram".dir   = "0_1_13";
  inputs."scram".type  = "github";
  inputs."scram".inputs.nixpkgs.follows = "nixpkgs";
  inputs."scram".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."sha1".owner = "nim-nix-pkgs";
  inputs."sha1".ref   = "master";
  inputs."sha1".repo  = "sha1";
  inputs."sha1".dir   = "";
  inputs."sha1".type  = "github";
  inputs."sha1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."sha1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-anonimongo-v0_3_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-anonimongo-v0_3_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}