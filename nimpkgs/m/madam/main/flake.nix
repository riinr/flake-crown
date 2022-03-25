{
  description = ''Local webserver for Design Prototyping and Front-end Development'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-madam-main.flake = false;
  inputs.src-madam-main.ref   = "refs/heads/main";
  inputs.src-madam-main.owner = "openpeep";
  inputs.src-madam-main.repo  = "madam";
  inputs.src-madam-main.type  = "github";
  
  inputs."klymene".owner = "nim-nix-pkgs";
  inputs."klymene".ref   = "master";
  inputs."klymene".repo  = "klymene";
  inputs."klymene".dir   = "main";
  inputs."klymene".type  = "github";
  inputs."klymene".inputs.nixpkgs.follows = "nixpkgs";
  inputs."klymene".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nyml".owner = "nim-nix-pkgs";
  inputs."nyml".ref   = "master";
  inputs."nyml".repo  = "nyml";
  inputs."nyml".dir   = "main";
  inputs."nyml".type  = "github";
  inputs."nyml".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nyml".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."tim".owner = "nim-nix-pkgs";
  inputs."tim".ref   = "master";
  inputs."tim".repo  = "tim";
  inputs."tim".dir   = "main";
  inputs."tim".type  = "github";
  inputs."tim".inputs.nixpkgs.follows = "nixpkgs";
  inputs."tim".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-madam-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-madam-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}