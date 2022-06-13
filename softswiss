## Setup. 
#### The launch of new casino. Introduction
To launch a new product we have to complete the following steps:
1. Provide the data required for the app config.
2. Refactor, update and extend the default template due to the business & 
design requirements.

The second step includes the full cycle of development process which is
meant to provide a ready to be purchased product as the result. It takes 
weeks to deliver the app to the customer. Such a long and complex kind of 
process requires:
- Carefully designed patterns for every stage
- Structured system of creating every single part of the application.
- Valuable and clear requirements that determine the definition of 
done of every single part.
- The stages of these process should be as flexible, non-related and
  order independent as it's possible.

If the process of a product development is organised in such a predictable 
way the development and management teams (it, designers, leads, 
product/project managers) are able to perform the most efficient level
of cooperation as the focus of the entire product team is not limping from 
one question to another during the whole production cycle but is completely 
on the result that resolves all the customer requests and needs.  
However, there is no key to any lock, and until that we should take about the 
patterns and methods that we use, refactor and maintain all the steps and 
stages to improve the final result. It means, that we have to discuss and fix 
the issues that have been revealed.  

#### Why does that matter?  
Such kind of improvement covers a couple of aspects that are valuable for 
any IT company, and especially, for the company that provides its own 
software as a product:
- The documented and set up from the box development plan as most of the 
higher level modules are shared between the projects.
- Predictable and clear state of the project on any point of the timeline.
- Team members can be easily switched, substituted, removed from or included in team on any 
(or almost any) stage of the development.
- The time and possible issues of the product delivery are reduced and easy 
predictable for most business cases as the most part of the product 
development is already described and arranged.

#### Problem
The setup of the new project is described in a single ticket typed **Setup**. 
In the description of the ticket we have all the data required for the app 
config and links to the designs. Not sure about the average estimation for 
the ticket but obviously it takes at least several weeks to finish the 
task. In `confluence` we have partial information about some basic/shared 
steps that are involved in every dev cycle.  
The **ER** of a ticket is actually a ready to be purchased application. 
Basically we get a ticket that is estimated for several weeks and stands 
for that complex process of product development from the beginning, a 
default template, to the very end, the ready to be used app.  
There is no any description of the plan itself, of the way to get the **ER**.

#### Solution
There are always lots of opportunities for the improvement. But there are two 
key points that shouldn't be missed in order to make it really efficient:
- Collecting and handling the issues
- Prioritizing of the collected issues  
  
Let's formulate the issues described above:  
- No structured development plan but just the only requirement to get a 
finished product version
- Constant questions that occur here and there with no determined source of 
truth that leads to non-predictable and non-linear stages of development 
process as the problems are revealed on a go
- No room and time for improvement as nothing is structured and nothing can 
be planned
  
There are definitely more side effects, but we are here in sake of statement 
of some achievable results but not to count the things.

To begin with, I would suggest to destructure the following ticket into the 
parts that might be relevant and understandable to all the members of a 
development team.

https://confluence.softswiss.com/display/SET/Setup  
To do that we should divide the app and extract the independent parts or 
modules which in a combination stand for the entire product. 
Here is the list of such modules:
- Header, Aside, Navigation, Notification Center, Auth panel, 
User Control Panel
- HOME page
- CMS pages
- GAMES page
- GAME page

[NB!] 
1. To setup styles due to the styleguide:
- variables (colors, text-colors)
- controls ( buttons )
- update icon-font
- `.content`

### Modules  
- Header, Aside, Navigation, Notification Center, Auth panel,
User Control Panel

These modules of the app have strong bidirectional relations. However, we 
can distinguish and sort out the entities that are connected by these 
relations. 
Due to the design style guide we have the following parts of the layout:
- Header ( Top Bar )
- Aside ( Sidebar )
  - bar-controller [module api]
- Panel ( Mobile menu )
- Navigation ( `left-header-menu`, `top-menu`, any list with nav links)
- Auth panel
- Main
- Footer
- Search
  - controller(button with icon) [module api]
  - modal content
  - revealed input (f.e. in Header or Main)
- Sign Up
  - controller(button) [module api]
  - model content
  - update `config/app/default/default.json` with fields
- Player Info 
  - Player info and level status [edge cases: '0 level/points', 'MAX level/points']
  - 


### Requirements:
- `Component` - a template for the `core-react` container.  
**Example:**  
```
<Components.PlayerLevel templateName="user-info" className={`${mainClass}__player-level`} />`  
```

Component: `src/components/atoms/PlayerLevel/user-info.view.tsx` 

- Do NOT call `organisms` (modules) and `atoms` (components) within the same name.



- Styles should be differentiated between different entities 

**Issue example:**
`Icon button`, wrapped with `Button` HTML Element to provide proper 
behaviour logic and actual HTML `Button` element expectedly have
different styles   
[src]: `bar-controller.view.tsx`  
```
<Components.Button
  templateName="text-button"
  className={`${mainClass}__close-button`}
  onClick={closeModal(BAR_ID)}
>
    <Components.Icon className={`${mainClass}__close-icon`} name="burger" />
</Components.Button>
```
    


- All icons should be treated as React.Elements
  - Easily customized and injected into the layout
**Issue example:**
![](../../../../../../../var/folders/v6/tw8k8_9n2qd87zyw1_gbtlrw0000gn/T/TemporaryItems/NSIRD_screencaptureui_dHJnfn/Screen Shot 2022-06-05 at 15.34.40.png)  

Sports icon is used in sidebar as `Image` and as `font-icon` in Panel.
**Issue definition** Duplicated sources of the image shape content and styles.


- All components should inherit following values:
  - color
  - font-size  


- All containers for modules should be presented: 
  - Search-controller

**Issue example:**  
[Task](https://jira.softswiss.net/browse/PTF-714)
[Design](https://www.figma.com/file/grWNVFawlkzP7SSr8KE8O8/Winning-(softswiss)?node-id=198%3A2219)

In order to toggle the `Aside` module closed/opened state we should switch the `Link` HTML element to the `Button`.

The following design expects the same `Search-controller` template to be used but 
but the logic related to the state change in template is described outside and 
duplicated.


### Benefits
[Lots of custom]
- We are able to define and distinguish every custom composition requirement on a project planning stage.
- Most of the custom solutions of component's logic and structure are replaced with a predefined **template** 
that require customization of the **appearance** but not the **behaviour**.


### Notes
- Design  
  - We do not have a `Username` property in codebase.
- Naming  
  - We should develop system of names for every level of product development  



### Suggestions  

#### Naming
- Layout (general terms):
    - *Header*
    - *Aside* - block of the layout on left or right of the content
    - *Main*
    - *Footer*


- Classes, templates:
    - "bar" --> "sidebar"
    - "panel" --> "bottom-bar"
