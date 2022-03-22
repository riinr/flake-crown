{
  description = ''Master Password algorithm implementation'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-masterpassword-v0_1_0.flake = false;
  inputs.src-masterpassword-v0_1_0.owner = "SolitudeSF";
  inputs.src-masterpassword-v0_1_0.ref   = "v0_1_0";
  inputs.src-masterpassword-v0_1_0.repo  = "masterpassword";
  inputs.src-masterpassword-v0_1_0.type  = "github";
  
  inputs."hmac".owner = "nim-nix-pkgs";
  inputs."hmac".ref   = "master";
  inputs."hmac".repo  = "hmac";
  inputs."hmac".dir   = "0_2_0";
  inputs."hmac".type  = "github";
  inputs."hmac".inputs.nixpkgs.follows = "nixpkgs";
  inputs."hmac".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-masterpassword-v0_1_0"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-masterpassword-v0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}