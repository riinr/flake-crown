{
  description = ''Pub/Sub engine'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-suber-0_9_9.flake = false;
  inputs.src-suber-0_9_9.ref   = "refs/tags/0.9.9";
  inputs.src-suber-0_9_9.owner = "olliNiinivaara";
  inputs.src-suber-0_9_9.repo  = "Suber";
  inputs.src-suber-0_9_9.type  = "github";
  
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
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-suber-0_9_9"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-suber-0_9_9";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}