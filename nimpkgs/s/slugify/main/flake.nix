{
  description = ''Convert strings to a slug. Can be used for URLs, file names, IDs etc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-slugify-main.flake = false;
  inputs.src-slugify-main.ref   = "refs/heads/main";
  inputs.src-slugify-main.owner = "lenniezelk";
  inputs.src-slugify-main.repo  = "slugify";
  inputs.src-slugify-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-slugify-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-slugify-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}