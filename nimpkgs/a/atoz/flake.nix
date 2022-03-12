{
  description = ''Amazon Web Services (AWS) APIs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."atoz-master".url = "path:./master";
  inputs."atoz-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-1_0_0".url = "path:./1_0_0";
  inputs."atoz-1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-1_0_3".url = "path:./1_0_3";
  inputs."atoz-1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2533_0_0".url = "path:./2533_0_0";
  inputs."atoz-2533_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2533_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2533_0_1".url = "path:./2533_0_1";
  inputs."atoz-2533_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2533_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2538_0_1".url = "path:./2538_0_1";
  inputs."atoz-2538_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2538_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2543_0_0".url = "path:./2543_0_0";
  inputs."atoz-2543_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2543_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2543_0_1".url = "path:./2543_0_1";
  inputs."atoz-2543_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2543_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2556_0_0".url = "path:./2556_0_0";
  inputs."atoz-2556_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2556_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2556_0_1".url = "path:./2556_0_1";
  inputs."atoz-2556_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2556_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2561_0_0".url = "path:./2561_0_0";
  inputs."atoz-2561_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2561_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2561_0_1".url = "path:./2561_0_1";
  inputs."atoz-2561_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2561_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2570_0_0".url = "path:./2570_0_0";
  inputs."atoz-2570_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2570_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2571_0_0".url = "path:./2571_0_0";
  inputs."atoz-2571_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2571_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2572_0_1".url = "path:./2572_0_1";
  inputs."atoz-2572_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2572_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2579_0_0".url = "path:./2579_0_0";
  inputs."atoz-2579_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2579_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2579_0_1".url = "path:./2579_0_1";
  inputs."atoz-2579_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2579_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2580_0_0".url = "path:./2580_0_0";
  inputs."atoz-2580_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2580_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2587_0_0".url = "path:./2587_0_0";
  inputs."atoz-2587_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2587_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2590_0_0".url = "path:./2590_0_0";
  inputs."atoz-2590_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2590_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2595_0_0".url = "path:./2595_0_0";
  inputs."atoz-2595_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2595_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2596_0_0".url = "path:./2596_0_0";
  inputs."atoz-2596_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2596_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2597_0_0".url = "path:./2597_0_0";
  inputs."atoz-2597_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2597_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2599_0_0".url = "path:./2599_0_0";
  inputs."atoz-2599_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2599_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2600_0_0".url = "path:./2600_0_0";
  inputs."atoz-2600_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2600_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2601_0_0".url = "path:./2601_0_0";
  inputs."atoz-2601_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2601_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2602_0_0".url = "path:./2602_0_0";
  inputs."atoz-2602_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2602_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2603_0_0".url = "path:./2603_0_0";
  inputs."atoz-2603_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2603_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2604_0_0".url = "path:./2604_0_0";
  inputs."atoz-2604_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2604_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2605_0_0".url = "path:./2605_0_0";
  inputs."atoz-2605_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2605_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2606_0_0".url = "path:./2606_0_0";
  inputs."atoz-2606_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2606_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2606_0_1".url = "path:./2606_0_1";
  inputs."atoz-2606_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2606_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2609_0_1".url = "path:./2609_0_1";
  inputs."atoz-2609_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2609_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2609_0_2".url = "path:./2609_0_2";
  inputs."atoz-2609_0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2609_0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2610_0_0".url = "path:./2610_0_0";
  inputs."atoz-2610_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2610_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2612_0_0".url = "path:./2612_0_0";
  inputs."atoz-2612_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2612_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2613_0_0".url = "path:./2613_0_0";
  inputs."atoz-2613_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2613_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2614_0_0".url = "path:./2614_0_0";
  inputs."atoz-2614_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2614_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2614_0_1".url = "path:./2614_0_1";
  inputs."atoz-2614_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2614_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2616_0_0".url = "path:./2616_0_0";
  inputs."atoz-2616_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2616_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2617_0_0".url = "path:./2617_0_0";
  inputs."atoz-2617_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2617_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2618_0_0".url = "path:./2618_0_0";
  inputs."atoz-2618_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2618_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2619_0_0".url = "path:./2619_0_0";
  inputs."atoz-2619_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2619_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2619_0_1".url = "path:./2619_0_1";
  inputs."atoz-2619_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2619_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2621_0_0".url = "path:./2621_0_0";
  inputs."atoz-2621_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2621_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2622_0_0".url = "path:./2622_0_0";
  inputs."atoz-2622_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2622_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2626_0_0".url = "path:./2626_0_0";
  inputs."atoz-2626_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2626_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2626_1_0".url = "path:./2626_1_0";
  inputs."atoz-2626_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2626_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2626_3_0".url = "path:./2626_3_0";
  inputs."atoz-2626_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2626_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."atoz-2626_4_0".url = "path:./2626_4_0";
  inputs."atoz-2626_4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."atoz-2626_4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}