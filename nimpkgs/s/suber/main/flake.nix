{
  description = ''Pub/Sub engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-suber-main.flake = false;
  inputs.src-suber-main.ref   = "refs/heads/main";
  inputs.src-suber-main.owner = "olliNiinivaara";
  inputs.src-suber-main.repo  = "Suber";
  inputs.src-suber-main.type  = "github";
  
  inputs."stashtable".owner = "nim-nix-pkgs";
  inputs."stashtable".ref   = "master";
  inputs."stashtable".repo  = "stashtable";
  inputs."stashtable".dir   = "1_2_1";
  inputs."stashtable".type  = "github";
  inputs."stashtable".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stashtable".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-suber-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-suber-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}