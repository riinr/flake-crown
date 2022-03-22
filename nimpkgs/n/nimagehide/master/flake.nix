{
  description = ''A library to hide data in images. Usable as library or cli tool.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimagehide-master.flake = false;
  inputs.src-nimagehide-master.owner = "MnlPhlp";
  inputs.src-nimagehide-master.ref   = "master";
  inputs.src-nimagehide-master.repo  = "nimagehide";
  inputs.src-nimagehide-master.type  = "github";
  
  inputs."stb_image".owner = "nim-nix-pkgs";
  inputs."stb_image".ref   = "master";
  inputs."stb_image".repo  = "stb_image";
  inputs."stb_image".dir   = "2_5";
  inputs."stb_image".type  = "github";
  inputs."stb_image".inputs.nixpkgs.follows = "nixpkgs";
  inputs."stb_image".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cligen".owner = "nim-nix-pkgs";
  inputs."cligen".ref   = "master";
  inputs."cligen".repo  = "cligen";
  inputs."cligen".dir   = "v1_5_22";
  inputs."cligen".type  = "github";
  inputs."cligen".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cligen".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."cli_menu".owner = "nim-nix-pkgs";
  inputs."cli_menu".ref   = "master";
  inputs."cli_menu".repo  = "cli_menu";
  inputs."cli_menu".dir   = "";
  inputs."cli_menu".type  = "github";
  inputs."cli_menu".inputs.nixpkgs.follows = "nixpkgs";
  inputs."cli_menu".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimagehide-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimagehide-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}