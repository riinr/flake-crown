{
  description = ''nim rofi (rust openfabrics interface) wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nofi-main.flake = false;
  inputs.src-nofi-main.ref   = "refs/heads/main";
  inputs.src-nofi-main.owner = "ct-clmsn";
  inputs.src-nofi-main.repo  = "nofi";
  inputs.src-nofi-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nofi-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nofi-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}