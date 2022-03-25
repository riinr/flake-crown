{
  description = ''A stupid simple YAML Parser. From YAML to stringified JSON (fastest) or JsonNode'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nyml-main.flake = false;
  inputs.src-nyml-main.ref   = "refs/heads/main";
  inputs.src-nyml-main.owner = "openpeep";
  inputs.src-nyml-main.repo  = "nyml";
  inputs.src-nyml-main.type  = "github";
  
  inputs."toktok".owner = "nim-nix-pkgs";
  inputs."toktok".ref   = "master";
  inputs."toktok".repo  = "toktok";
  inputs."toktok".dir   = "main";
  inputs."toktok".type  = "github";
  inputs."toktok".inputs.nixpkgs.follows = "nixpkgs";
  inputs."toktok".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nyml-main"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-nyml-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}