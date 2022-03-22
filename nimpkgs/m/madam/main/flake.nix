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
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-madam-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-madam-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}