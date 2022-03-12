{
  description = ''A library for quickly and easily encrypting strings & files. User-friendly and highly compatible.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-quickcrypt-0_1_4.flake = false;
  inputs.src-quickcrypt-0_1_4.owner = "theAkito";
  inputs.src-quickcrypt-0_1_4.ref   = "refs/tags/0.1.4";
  inputs.src-quickcrypt-0_1_4.repo  = "nim-quickcrypt";
  inputs.src-quickcrypt-0_1_4.type  = "github";
  
  inputs."nimaes".owner = "nim-nix-pkgs";
  inputs."nimaes".ref   = "master";
  inputs."nimaes".repo  = "nimaes";
  inputs."nimaes".type  = "github";
  inputs."nimaes".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimaes".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."neoid".owner = "nim-nix-pkgs";
  inputs."neoid".ref   = "master";
  inputs."neoid".repo  = "neoid";
  inputs."neoid".type  = "github";
  inputs."neoid".inputs.nixpkgs.follows = "nixpkgs";
  inputs."neoid".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-quickcrypt-0_1_4"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-quickcrypt-0_1_4";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}