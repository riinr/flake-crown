{
  description = ''Salted Challenge Response Authentication Mechanism (SCRAM) '';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-scram-0_1_12.flake = false;
  inputs.src-scram-0_1_12.owner = "rgv151";
  inputs.src-scram-0_1_12.ref   = "refs/tags/0.1.12";
  inputs.src-scram-0_1_12.repo  = "scram";
  inputs.src-scram-0_1_12.type  = "github";
  
  inputs."hmac".owner = "nim-nix-pkgs";
  inputs."hmac".ref   = "master";
  inputs."hmac".repo  = "hmac";
  inputs."hmac".type  = "github";
  inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-scram-0_1_12"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-scram-0_1_12";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}