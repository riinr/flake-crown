{
  description = ''Small and dependency free Nim package to infer file and MIME type checking the magic numbers signature.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-filetype-main.flake = false;
  inputs.src-filetype-main.owner = "jiro4989";
  inputs.src-filetype-main.ref   = "refs/heads/main";
  inputs.src-filetype-main.repo  = "filetype";
  inputs.src-filetype-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-filetype-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-filetype-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}