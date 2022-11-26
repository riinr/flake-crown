{
  description = ''A stupid simple YAML Parser. From YAML to stringified JSON (fastest) or JsonNode'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nyml-0_1_0.flake = false;
  inputs.src-nyml-0_1_0.ref   = "refs/tags/0.1.0";
  inputs.src-nyml-0_1_0.owner = "openpeep";
  inputs.src-nyml-0_1_0.repo  = "nyml";
  inputs.src-nyml-0_1_0.type  = "github";
  
  inputs."toktok".owner = "nim-nix-pkgs";
  inputs."toktok".ref   = "master";
  inputs."toktok".repo  = "toktok";
  inputs."toktok".dir   = "main";
  inputs."toktok".type  = "github";
  inputs."toktok".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toktok".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."pkginfo".owner = "nim-nix-pkgs";
  inputs."pkginfo".ref   = "master";
  inputs."pkginfo".repo  = "pkginfo";
  inputs."pkginfo".dir   = "v0_1_0";
  inputs."pkginfo".type  = "github";
  inputs."pkginfo".inputs.nixpkgs.follows = "nixpkgs";
  inputs."pkginfo".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nyml-0_1_0"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nyml-0_1_0";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}