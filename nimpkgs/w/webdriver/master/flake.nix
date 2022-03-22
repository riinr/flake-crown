{
  description = ''Implementation of the WebDriver w3c spec.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-webdriver-master.flake = false;
  inputs.src-webdriver-master.ref   = "refs/heads/master";
  inputs.src-webdriver-master.owner = "dom96";
  inputs.src-webdriver-master.repo  = "webdriver";
  inputs.src-webdriver-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-webdriver-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-webdriver-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}