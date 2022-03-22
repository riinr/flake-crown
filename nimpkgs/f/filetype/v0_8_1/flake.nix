{
  description = ''Small and dependency free Nim package to infer file and MIME type checking the magic numbers signature.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-filetype-v0_8_1.flake = false;
  inputs.src-filetype-v0_8_1.ref   = "refs/tags/v0.8.1";
  inputs.src-filetype-v0_8_1.owner = "jiro4989";
  inputs.src-filetype-v0_8_1.repo  = "filetype";
  inputs.src-filetype-v0_8_1.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-filetype-v0_8_1"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-filetype-v0_8_1";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}